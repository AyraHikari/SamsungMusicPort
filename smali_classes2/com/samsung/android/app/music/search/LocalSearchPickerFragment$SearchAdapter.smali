.class public Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;
.super Lcom/samsung/android/app/music/search/SearchableAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/SearchableAdapter<",
        "Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 369
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;-><init>(Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;
    .locals 2

    if-nez p3, :cond_0

    .line 375
    iget-object p3, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f04017c

    const/4 v1, 0x0

    .line 376
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 378
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/search/SearchableAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method protected b(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V
    .locals 3

    .line 383
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;->c()Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v1, p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 386
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 388
    iget-object p1, p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 366
    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;->b(Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 366
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/search/SearchableAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
