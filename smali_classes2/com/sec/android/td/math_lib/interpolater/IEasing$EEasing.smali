.class public final enum Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/td/math_lib/interpolater/IEasing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EEasing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

.field public static final enum In:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

.field public static final enum InOut:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

.field public static final enum None:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

.field public static final enum Out:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

.field public static final enum OutIn:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->None:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    new-instance v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    const-string v1, "In"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->In:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    new-instance v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    const-string v1, "InOut"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->InOut:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    new-instance v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    const-string v1, "Out"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->Out:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    new-instance v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    const-string v1, "OutIn"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->OutIn:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    sget-object v1, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->None:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->In:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->InOut:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->Out:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->OutIn:Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->$VALUES:[Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;
    .locals 1

    .line 8
    const-class v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;
    .locals 1

    .line 8
    sget-object v0, Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->$VALUES:[Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    invoke-virtual {v0}, [Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/td/math_lib/interpolater/IEasing$EEasing;

    return-object v0
.end method
