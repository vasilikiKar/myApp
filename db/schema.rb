# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_11_07_212724) do
  create_table "pistons", force: :cascade do |t|
    t.string "engine_maker"
    t.string "piston_reference_number"
    t.string "vehicle"
    t.string "vehicle_indexing"
    t.string "model_year"
    t.string "engine_types"
    t.string "cubic_displacement"
    t.string "fuel"
    t.string "compression_ratio"
    t.string "engine_power"
    t.string "cylinder_diameter"
    t.string "piston_compression_height"
    t.string "piston_bowl_diameter"
    t.string "piston_bowl_depth"
    t.string "piston_bowl_offset"
    t.string "top_land_width"
    t.string "pin_boss_spacing"
    t.string "dome_height"
    t.string "valve_recess_depth"
    t.string "piston_pin_outside_diameter"
    t.string "total_piston_length"
    t.string "piston_ring_dimensions"
    t.string "aluminum_piston_cast_no"
    t.string "articulated_piston_crown_cast_no"
    t.string "articulated_piston_skirt_cast_no"
    t.string "drt_kk_ak_ha_nb"
    t.string "earlier_piston_equivalent_reference_numbers"
    t.string "other_makers_piston_reference_numbers"
    t.string "genuine_oe_reference_no"
    t.string "mahle_ref_no"
    t.string "ae"
    t.string "af"
    t.string "mahle_liner_ref_no"
    t.string "ah"
    t.string "ai"
    t.string "liner_flange_diameter"
    t.string "liner_flange_height"
    t.string "liner_fire_wall_height"
    t.string "liner_diameter_at_seals"
    t.string "total_liner_length"
    t.string "liner_pin_bore_relief_height"
    t.string "liner_fire_ring"
  end

end
