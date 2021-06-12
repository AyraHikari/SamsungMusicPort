.class final Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 59
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->c(Lcom/samsung/android/app/music/main/BottomBarHostImpl;)Lcom/samsung/android/app/music/activity/BottomTabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Z)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1$lambda$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
