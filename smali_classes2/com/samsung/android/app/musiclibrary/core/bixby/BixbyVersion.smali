.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion$Def;
    }
.end annotation


# static fields
.field public static final ALL_ENABLED:I = 0x0

.field private static final DEBUG_ALL_VERSION:Z = false

.field public static final NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BixbyVersion"

.field public static final V1:I = 0x1

.field public static final V2:I = 0x2

.field private static sVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->B:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 p0, -0x1

    .line 38
    sput p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;->sVersion:I

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 42
    sput v1, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;->sVersion:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 44
    sput p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;->sVersion:I

    :goto_0
    const-string p0, "Bixby"

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | init() - sVersion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;->sVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static which()I
    .locals 1

    .line 51
    sget v0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;->sVersion:I

    return v0
.end method
