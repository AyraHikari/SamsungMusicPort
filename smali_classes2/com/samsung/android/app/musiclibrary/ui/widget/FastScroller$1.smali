.class Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 173
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V

    return-void
.end method
