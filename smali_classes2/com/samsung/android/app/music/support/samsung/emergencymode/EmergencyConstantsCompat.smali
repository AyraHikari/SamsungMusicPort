.class public Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;
.super Ljava/lang/Object;
.source "EmergencyConstantsCompat.java"


# static fields
.field public static final EMERGENCY_STATE_CHANGED:Ljava/lang/String;

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final MODE_DISABLED:I

.field public static final MODE_ENABLED:I

.field public static final MODE_ENABLING:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 2
    sput-object v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    const/4 v0, 0x3

    .line 3
    sput v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_ENABLED:I

    const/4 v0, 0x2

    .line 4
    sput v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_ENABLING:I

    const/4 v0, 0x5

    .line 5
    sput v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_DISABLED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
