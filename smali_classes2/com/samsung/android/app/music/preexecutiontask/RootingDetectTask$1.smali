.class Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask$1;->a:Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->exit()V

    return-void
.end method
