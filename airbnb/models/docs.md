{% docs dim_listing_cleansed__minimum_nights %}
Minimum number of nights required to rent this property.

Keep in mind that old listings might hvae `minimum_nights` set to 0 in the source tables. Our cleansing algorithm updates this to `1`.

{% enddocs %}

{% docs dim_host_cleansed_is_super_host %}
T or F is the host is super host.

This is string data type but better to make it boolean with true or false.
{% enddocs %}