.class public final Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DlnaDmsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 184
    check-cast v0, Ljava/lang/String;

    .line 185
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "provider_id"

    .line 187
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 188
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 190
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 200
    check-cast v0, Ljava/lang/String;

    .line 201
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "provider_name"

    .line 203
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 206
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->text1Index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 177
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 179
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->context:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->text1Index:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0400dd

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 169
    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object p1
.end method
