.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder<",
        "TT;>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 65
    sget p1, Lcom/samsung/android/app/musiclibrary/R$layout;->mu_grid_item:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;->a:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;)I
    .locals 0

    .line 62
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;->a:I

    return p0
.end method


# virtual methods
.method public a(I)Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 73
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;->a:I

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;->self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;

    return-object p1
.end method
