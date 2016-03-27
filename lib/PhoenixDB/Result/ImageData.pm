use utf8;
package PhoenixDB::Result::ImageData;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::ImageData

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

=head1 TABLE: C<image_data>

=cut

__PACKAGE__->table("image_data");

=head1 ACCESSORS

=head2 image

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 binary_data

  data_type: 'longblob'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "image",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "binary_data",
  { data_type => "longblob", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</image>

=back

=cut

__PACKAGE__->set_primary_key("image");

=head1 RELATIONS

=head2 image

Type: belongs_to

Related object: L<PhoenixDB::Result::Image>

=cut

__PACKAGE__->belongs_to(
  "image",
  "PhoenixDB::Result::Image",
  { id => "image" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:TjWvmsFC8SJIAZWP+SOvQQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
