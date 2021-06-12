.class public Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMERGENCY_STATE_CHANGED:Ljava/lang/String;

.field public static final MODE_DISABLED:I

.field public static final MODE_ENABLED:I

.field public static final MODE_ENABLING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_ENABLED:I

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_ENABLING:I

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_DISABLED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
