class ChangeWinemakerProfileAndDeferredRemunerationInGroups < ActiveRecord::Migration[6.0]
  def change
    rename_column :groups, :winemaker_profil, :winemaker_profile
    rename_column :groups, :deferred_remunation, :deferred_remuneration
  end
end
