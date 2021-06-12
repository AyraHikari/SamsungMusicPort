.class final Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCardViewController;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/folder/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FolderCardViewController"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCardViewController;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 3

    .line 204
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/FolderCardViewQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCardViewController;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/cardview/FolderCardViewQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bucket_id"

    .line 217
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCardViewController;->a:Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    const/4 v2, 0x1

    .line 209
    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/player/util/FolderPlayUtils;->play(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
