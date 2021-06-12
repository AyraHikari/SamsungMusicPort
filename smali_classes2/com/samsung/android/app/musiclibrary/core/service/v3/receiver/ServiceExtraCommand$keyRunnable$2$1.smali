.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private keyEvent:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKeyEvent()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2$1;->keyEvent:I

    return v0
.end method

.method public run()V
    .locals 2

    .line 115
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2$1;->keyEvent:I

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    return-void
.end method

.method public final setKeyEvent(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceExtraCommand$keyRunnable$2$1;->keyEvent:I

    return-void
.end method
