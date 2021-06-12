.class Lcom/samsung/android/app/music/main/MilkTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MilkTask;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

.field final synthetic b:Lcom/samsung/android/app/music/main/MilkTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MilkTask;Lcom/samsung/android/app/music/update/AppUpdateChecker;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/samsung/android/app/music/main/MilkTask$2;->b:Lcom/samsung/android/app/music/main/MilkTask;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/MilkTask$2;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "BasicApis.doStoreData.doFinally"

    .line 220
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask$2;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MilkTask$2;->a:Lcom/samsung/android/app/music/update/AppUpdateChecker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/update/AppUpdateChecker;->a()V

    :cond_0
    return-void
.end method
