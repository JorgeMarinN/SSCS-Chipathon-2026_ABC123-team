
import os
import klayout.db as db
# ============================================================# CONFIGURACIÓN# ============================================================
INPUT_GDS = "../OSC/OSC_RING.klay.gds"
OUTPUT_GDS = "SDC_TOP.klay.gds"
NUM_STAGES = 2
# Separación ENTRE LOS BORDES de cada VCO
SPACING_UM = 10.0
# Nombre de la nueva top cell
TOP_CELL_NAME = "OSC_STAGE"

# ============================================================# MAIN# ============================================================
def main():
    if not os.path.exists(INPUT_GDS):
    	print(f"ERROR: No se encontró {INPUT_GDS}")
    	print(f"Carpeta actual :{os.getcwd()}")
    	return
    print("=" * 60)
    print("OSC STAGE GENERATOR")
    print("=" * 60)
    print(f"\nLeyendo: {INPUT_GDS}")
    # --------------------------------------------------------    # 2. Leer layout original    # --------------------------------------------------------
    layout = db.Layout()
    layout.read(INPUT_GDS)
    print(f"Database unit: {layout.dbu} um")
    # --------------------------------------------------------    # 3. Encontrar top cell original    # --------------------------------------------------------
    top_cells = list(layout.top_cells())
    if len(top_cells) == 0:
    	print("ERROR: No se encontró ninguna top cell.")
    	return
    print("\nTop cells encontradas:")
    
    for cell in top_cells:
    	print(f"  - {cell.name}")
    	
    # Normalmente debería existir solo una
    original_cell = top_cells[0]
    print(f"\nUsando como celda original: {original_cell.name}")
    # --------------------------------------------------------    # 4. Obtener tamaño REAL del layout    # --------------------------------------------------------
    bbox = original_cell.bbox()
    width_dbu = bbox.width()
    height_dbu = bbox.height()
    width_um = width_dbu * layout.dbu
    height_um = height_dbu * layout.dbu
    print("\nDimensiones del VCO:")
    print(f"  Width : {width_um:.3f} um")
    print(f"  Height: {height_um:.3f} um")
    # --------------------------------------------------------    # 5. Crear nueva top cell    # --------------------------------------------------------
    # Por seguridad, si ya existiera una celda OSC_STAGE,    # usamos otro nombre temporal.    
    if layout.cell(TOP_CELL_NAME) is not None:
    	print(f"\nWARNING: Ya existe una celda '{TOP_CELL_NAME}'")
    	print("Se utilizará OSC_STAGE_NEW.")
    	new_top_name = "OSC_STAGE_NEW"
    else:
    	new_top_name = TOP_CELL_NAME
    	
    osc_stage = layout.create_cell(new_top_name)
    # --------------------------------------------------------    # 6. Calcular pitch    # --------------------------------------------------------
    spacing_dbu = round(SPACING_UM / layout.dbu)
    # Distancia desde el origen de una instancia    # hasta el origen de la siguiente    
    pitch_x = width_dbu + spacing_dbu
    print("\nConfiguración:")
    print(f"  Número de etapas : {NUM_STAGES}")
    print(f"  Separación       : {SPACING_UM:.3f} um")
    print(f"  Pitch X          : {pitch_x * layout.dbu:.3f} um")
    
    # --------------------------------------------------------    # 7. Corregir bbox.left    #    # Esto hace que cada instancia quede separada según    # su BBOX REAL incluso si la celda original no comienza    # exactamente en X=0.    # --------------------------------------------------------
    first_x = -bbox.left
    # --------------------------------------------------------    # 8. Instanciar 3 VCO    # --------------------------------------------------------
    print("\nColocando etapas:")
    
    for i in range(NUM_STAGES):
        x = first_x + i * pitch_x
        y = -bbox.bottom
        trans = db.Trans(
        	db.Trans.R0,
        	x,
        	y
        )
        inst = db.CellInstArray(
        	original_cell.cell_index(),
        	trans
        )
        osc_stage.insert(inst)
        print(
        	f"  Stage {i + 1}: "
        	f"X = {x * layout.dbu:.3f} um, "
        	f"Y = {y * layout.dbu:.3f} um"
        )
    # --------------------------------------------------------    # 9. Guardar nuevo GDS    # --------------------------------------------------------
    print(f"\nGuardando: {OUTPUT_GDS}")
    layout.write(OUTPUT_GDS)
    # --------------------------------------------------------    # 10. Información final    # --------------------------------------------------------
    final_bbox = osc_stage.bbox()
    final_width = final_bbox.width() * layout.dbu
    final_height = final_bbox.height() * layout.dbu
    print("\n" + "=" * 60)
    print("GENERACIÓN COMPLETA")
    print("=" * 60)
    print(f"Archivo generado : {OUTPUT_GDS}")
    print(f"Top cell         : {osc_stage.name}")
    print(f"Etapas           : {NUM_STAGES}")
    print("\nTamaño final:")
    print(f"  Width : {final_width:.3f} um")
    print(f"  Height: {final_height:.3f} um")
    print("\nEstructura:")
    print("")
    print("   VCO_STAGE_1        VCO_STAGE_2        VCO_STAGE_3")
    print("   ┌─────────┐        ┌─────────┐        ┌─────────┐")
    print("   │         │        │         │        │         │")
    print("   │   VCO   │        │   VCO   │        │   VCO   │")
    print("   │         │        │         │        │         │")
    print("   └─────────┘        └─────────┘        └─────────┘")
    print(f"          <--- {SPACING_UM} um --->")
    print("")
    print("=" * 60)

if __name__ == "__main__":    main()
