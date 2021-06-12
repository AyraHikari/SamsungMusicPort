.class Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "executeKeyRunnable"
.end annotation


# instance fields
.field private mKeyEvent:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$1;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;->mKeyEvent:I

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    return-void
.end method

.method public setKeyEvent(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils$executeKeyRunnable;->mKeyEvent:I

    return-void
.end method
