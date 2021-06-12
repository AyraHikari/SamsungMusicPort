.class public Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Secure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/provider/SettingsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final PERFORMANCE_MODE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 91
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const-string v0, "android.provider.Settings$Secure"

    const-string v1, "SEM_PERFORMANCE_MODE"

    const-string v2, ""

    .line 94
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Secure;->PERFORMANCE_MODE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$Secure;->PERFORMANCE_MODE:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
