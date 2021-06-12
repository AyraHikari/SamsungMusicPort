.class public final Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelectedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/EventManagerTask;-><init>(Lcom/samsung/android/app/music/main/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/EventManagerTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/EventManagerTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelectedListener$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 92
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelectedListener$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/main/EventManagerTask;->a(Lcom/samsung/android/app/music/main/EventManagerTask;I)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 94
    sget-object p1, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a:Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    iget-object p2, p0, Lcom/samsung/android/app/music/main/EventManagerTask$onTabSelectedListener$1;->a:Lcom/samsung/android/app/music/main/EventManagerTask;

    invoke-static {p2}, Lcom/samsung/android/app/music/main/EventManagerTask;->b(Lcom/samsung/android/app/music/main/EventManagerTask;)Lcom/samsung/android/app/music/main/MainActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "activity.applicationContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
