.class public final Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string p1, "year_name"

    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected b()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->c()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public c()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;
    .locals 1

    .line 152
    new-instance v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;-><init>(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->b()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    return-object v0
.end method
