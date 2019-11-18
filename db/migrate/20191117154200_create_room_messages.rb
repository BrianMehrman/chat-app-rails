class CreateRoomMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :room_messages, id: :uuid do |t|
      t.references :room, foreign_key: true, type: :uuid
      t.references :user, foreign_key: true, type: :uuid
      t.text :message

      t.timestamps
    end
  end
end
