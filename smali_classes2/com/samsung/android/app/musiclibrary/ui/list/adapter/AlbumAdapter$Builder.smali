.class public Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public b()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
    .locals 1

    .line 91
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->b()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
