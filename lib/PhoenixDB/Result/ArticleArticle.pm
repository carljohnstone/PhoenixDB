use utf8;
package PhoenixDB::Result::ArticleArticle;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PhoenixDB::Result::ArticleArticle

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

=head1 TABLE: C<article_articles>

=cut

__PACKAGE__->table("article_articles");

=head1 ACCESSORS

=head2 article_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 related_article

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 0

=head2 order

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "article_id",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "related_article",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 0,
  },
  "order",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</article_id>

=item * L</related_article>

=back

=cut

__PACKAGE__->set_primary_key("article_id", "related_article");

=head1 RELATIONS

=head2 article

Type: belongs_to

Related object: L<PhoenixDB::Result::Article>

=cut

__PACKAGE__->belongs_to(
  "article",
  "PhoenixDB::Result::Article",
  { id => "article_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 related_article

Type: belongs_to

Related object: L<PhoenixDB::Result::Article>

=cut

__PACKAGE__->belongs_to(
  "related_article",
  "PhoenixDB::Result::Article",
  { id => "related_article" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07022 @ 2016-02-07 17:41:27
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WJdL4OZ58eqpI10e+lUFSg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
