.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/browser/ApprovedClientPkgName;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPROVED_PKG:[Ljava/lang/String;

.field public static final PKG_BT:Ljava/lang/String; = "com.android.bluetooth"

.field public static final PKG_CAR_MODE:Ljava/lang/String; = "com.sec.android.automotive.drivelink"

.field public static final PKG_GEAR_MANAGER:Ljava/lang/String; = "com.samsung.android.gearoplugin"

.field public static final PKG_RUBIN:Ljava/lang/String; = "com.samsung.android.rubin.app"

.field public static final PKG_START_THINGS:Ljava/lang/String; = "com.samsung.android.oneconnect"

.field public static final PKG_SVOICE_SYNC:Ljava/lang/String; = "com.samsung.svoice.sync"

.field public static final PKG_S_HEALTH:Ljava/lang/String; = "com.sec.android.app.shealth"

.field public static final PKG_S_PAGE:Ljava/lang/String; = "com.samsung.android.app.spage"

.field public static final PKG_S_VOICE_1:Ljava/lang/String; = "com.vlingo.midas"

.field public static final PKG_S_VOICE_2:Ljava/lang/String; = "com.samsung.voiceserviceplatform"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "com.android.bluetooth"

    const-string v1, "com.sec.android.automotive.drivelink"

    const-string v2, "com.vlingo.midas"

    const-string v3, "com.samsung.voiceserviceplatform"

    const-string v4, "com.samsung.svoice.sync"

    const-string v5, "com.sec.android.app.shealth"

    const-string v6, "com.samsung.android.app.spage"

    const-string v7, "com.samsung.android.rubin.app"

    const-string v8, "com.samsung.android.oneconnect"

    .line 27
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/ApprovedClientPkgName;->APPROVED_PKG:[Ljava/lang/String;

    return-void
.end method
