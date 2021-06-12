.class final Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewController;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaylistCardViewController"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 821
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewController;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 823
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/query/PlaylistCardViewQuery;-><init>()V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 11

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_id"

    .line 951
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p1, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 828
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewController;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v1

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 829
    array-length v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xcc

    const/4 v10, 0x0

    .line 832
    invoke-static/range {v1 .. v10}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1
.end method
