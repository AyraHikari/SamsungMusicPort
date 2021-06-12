.class final Lcom/samsung/android/app/music/main/BottomBarHostImpl$hideBottomBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/BottomBarHostImpl;->b(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/BottomBarHostImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/BottomBarHostImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$hideBottomBar$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "BottomTabHost"

    const-string v1, "mini player show animation end"

    .line 71
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$hideBottomBar$1;->a:Lcom/samsung/android/app/music/main/BottomBarHostImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->a(Lcom/samsung/android/app/music/main/BottomBarHostImpl;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->setMiniPlayerEnabled(Z)V

    return-void
.end method
