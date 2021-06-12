.class final Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "BottomTabHost"

    const-string v1, "mini player hide animation end"

    .line 57
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->b(Lcom/samsung/android/app/music/main/BottomBarHostImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1$1;-><init>(Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
