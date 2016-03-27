use utf8;
package PhoenixDB::Result::Promo;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::Promo

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

=head1 TABLE: C<promos>

=cut

__PACKAGE__->table("promos");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 45

=head2 image

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 article

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 download

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 start_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0
  locale: 'en_GB'
  timezone: 'Europe/London'

=head2 end_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0
  locale: 'en_GB'
  timezone: 'Europe/London'

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "varchar", is_nullable => 0, size => 45 },
  "image",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "article",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "download",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "url",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "start_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
    locale => "en_GB",
    timezone => "Europe/London",
  },
  "end_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
    locale => "en_GB",
    timezone => "Europe/London",
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 article

Type: belongs_to

Related object: L<PhoenixDB::Result::Article>

=cut

__PACKAGE__->belongs_to(
  "article",
  "PhoenixDB::Result::Article",
  { id => "article" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 download

Type: belongs_to

Related object: L<PhoenixDB::Result::Download>

=cut

__PACKAGE__->belongs_to(
  "download",
  "PhoenixDB::Result::Download",
  { id => "download" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);

=head2 homepage_promos

Type: has_many

Related object: L<PhoenixDB::Result::HomepagePromo>

=cut

__PACKAGE__->has_many(
  "homepage_promos",
  "PhoenixDB::Result::HomepagePromo",
  { "foreign.promo" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 image

Type: belongs_to

Related object: L<PhoenixDB::Result::Image>

=cut

__PACKAGE__->belongs_to(
  "image",
  "PhoenixDB::Result::Image",
  { id => "image" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "CASCADE",
    on_update     => "CASCADE",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:hRDZw8gzLh21vmZN3OO0+Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
