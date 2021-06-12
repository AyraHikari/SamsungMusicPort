.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;",
            ")V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    if-ltz p1, :cond_2

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager$1;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemViewType(I)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->getSpanCount()I

    move-result p1

    :goto_1
    return p1
.end method
