.class Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->b()V

    return-void
.end method
