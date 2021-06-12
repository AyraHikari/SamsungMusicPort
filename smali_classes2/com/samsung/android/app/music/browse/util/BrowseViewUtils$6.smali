.class final Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$6;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$6;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 508
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$6;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 509
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$6;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
