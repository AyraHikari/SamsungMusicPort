.class final Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewController;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AllTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AllTrackCardViewController"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/AllTrackFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AllTrackFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewController;->a:Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 5

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    .line 185
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewController;->a:Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, -0xe

    .line 186
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, -0x1

    .line 184
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Z
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewController;->a:Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, -0xe

    .line 195
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    const/4 v2, 0x1

    .line 193
    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/app/music/util/player/PlaylistPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;IZ)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
