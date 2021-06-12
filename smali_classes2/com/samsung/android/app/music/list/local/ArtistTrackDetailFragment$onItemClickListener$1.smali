.class final Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 8

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3c

    const/4 v7, 0x0

    move v1, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/content/Context;[JLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)I

    return-void
.end method
