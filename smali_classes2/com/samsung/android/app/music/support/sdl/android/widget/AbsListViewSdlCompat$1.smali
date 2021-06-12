.class final Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat$1;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat;->getPenSelectDragBlockImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsListViewSdlCompat$1;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setSelection(I)V
    .locals 0

    return-void
.end method
