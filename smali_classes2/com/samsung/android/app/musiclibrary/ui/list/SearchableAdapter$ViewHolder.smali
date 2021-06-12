.class public Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;Landroid/view/View;I)V
    .locals 2

    .line 343
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 344
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    .line 345
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    :cond_0
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->list_category_layout:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->a:Landroid/view/View;

    .line 348
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->a:Landroid/view/View;

    if-eqz p3, :cond_2

    .line 349
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->a:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 356
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->divider:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->e:Landroid/view/View;

    .line 357
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->a:Landroid/view/View;

    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->list_category_text:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->b:Landroid/widget/TextView;

    .line 358
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->a:Landroid/view/View;

    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->sub_title_divider:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->c:Landroid/view/View;

    .line 359
    iget-object p3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 360
    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->winsetUiEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 361
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->b:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->list_item_section_text1_winset:I

    .line 362
    invoke-static {p3, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 361
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->c:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->divider_list_winset:I

    .line 364
    invoke-static {p3, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p3

    .line 363
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->b:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->blur_text:I

    invoke-static {p3, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->c:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$color;->divider_list_blur:I

    .line 368
    invoke-static {p3, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p3

    .line 367
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 370
    :goto_0
    sget p1, Lcom/samsung/android/app/musiclibrary/R$id;->selector:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$ViewHolder;->d:Landroid/view/View;

    :cond_2
    return-void
.end method
