use utf8;
package PhoenixDB::Result::LeagueTable;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::LeagueTable

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<league_tables>

=cut

__PACKAGE__->table("league_tables");

=head1 ACCESSORS

=head2 league

  data_type: 'varchar'
  is_nullable: 0
  size: 10

=head2 last_updated

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 1
  locale: 'en_GB'
  timezone: 'Europe/London'

=cut

__PACKAGE__->add_columns(
  "league",
  { data_type => "varchar", is_nullable => 0, size => 10 },
  "last_updated",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 1,
    locale => "en_GB",
    timezone => "Europe/London",
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</league>

=back

=cut

__PACKAGE__->set_primary_key("league");

=head1 RELATIONS

=head2 league_tables_datas

Type: has_many

Related object: L<PhoenixDB::Result::LeagueTablesData>

=cut

__PACKAGE__->has_many(
  "league_tables_datas",
  "PhoenixDB::Result::LeagueTablesData",
  { "foreign.league" => "self.league" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gv8kDNEM6iUM4g6vPJXrhA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
