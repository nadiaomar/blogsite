---
layout: page
title: "Blogs"
group: navigation
---
{% include JB/setup %}


<div class="row">

	<!-- Recent Posts -->
	<div class="col-xs-12 col-md-4">
		<h2>Recent Posts</h2> <br/>
		{% assign posts_collate = site.posts %}
		{% include JB/posts_collate %}
	</div>

	<!-- Categories -->
	<div class="col-xs-12 col-md-4">
	<h2>Categories</h2> <br/>
		<ul class="tag_box inline text-capitalize">
			{% assign categories_list = site.categories %}
			{% include JB/categories_list %}
		</ul>


		{% for category in site.categories %}
		<h4 class="text-capitalize" id="{{ category[0] }}-ref">{{ category[0] | join: "/" }}</h4>
		<ul>
			{% assign pages_list = category[1] %}
			{% include JB/pages_list %}
		</ul>
		{% endfor %}
	</div>

	<!-- Tags -->
	<div class="col-xs-12 col-md-4">
	<h2>Tags</h2> <br/>
		<ul class="tag_box inline">
			{% assign tags_list = site.tags %}  
			{% include JB/tags_list %}
		</ul>


		{% for tag in site.tags %} 
		<h4 id="{{ tag[0] }}-ref">{{ tag[0] }}</h4>
		<ul>
			{% assign pages_list = tag[1] %}  
			{% include JB/pages_list %}
		</ul>
		{% endfor %}
	</div>

</div>
