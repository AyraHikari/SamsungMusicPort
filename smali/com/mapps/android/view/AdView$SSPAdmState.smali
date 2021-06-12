.class public final enum Lcom/mapps/android/view/AdView$SSPAdmState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSPAdmState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mapps/android/view/AdView$SSPAdmState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICK:Lcom/mapps/android/view/AdView$SSPAdmState;

.field private static final synthetic ENUM$VALUES:[Lcom/mapps/android/view/AdView$SSPAdmState;

.field public static final enum VIEW:Lcom/mapps/android/view/AdView$SSPAdmState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1649
    new-instance v0, Lcom/mapps/android/view/AdView$SSPAdmState;

    const-string v1, "VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/view/AdView$SSPAdmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapps/android/view/AdView$SSPAdmState;->VIEW:Lcom/mapps/android/view/AdView$SSPAdmState;

    new-instance v0, Lcom/mapps/android/view/AdView$SSPAdmState;

    const-string v1, "CLICK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mapps/android/view/AdView$SSPAdmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapps/android/view/AdView$SSPAdmState;->CLICK:Lcom/mapps/android/view/AdView$SSPAdmState;

    const/4 v0, 0x2

    .line 1648
    new-array v0, v0, [Lcom/mapps/android/view/AdView$SSPAdmState;

    sget-object v1, Lcom/mapps/android/view/AdView$SSPAdmState;->VIEW:Lcom/mapps/android/view/AdView$SSPAdmState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mapps/android/view/AdView$SSPAdmState;->CLICK:Lcom/mapps/android/view/AdView$SSPAdmState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mapps/android/view/AdView$SSPAdmState;->ENUM$VALUES:[Lcom/mapps/android/view/AdView$SSPAdmState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1648
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mapps/android/view/AdView$SSPAdmState;
    .locals 1

    .line 1
    const-class v0, Lcom/mapps/android/view/AdView$SSPAdmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mapps/android/view/AdView$SSPAdmState;

    return-object p0
.end method

.method public static values()[Lcom/mapps/android/view/AdView$SSPAdmState;
    .locals 4

    .line 1
    sget-object v0, Lcom/mapps/android/view/AdView$SSPAdmState;->ENUM$VALUES:[Lcom/mapps/android/view/AdView$SSPAdmState;

    array-length v1, v0

    new-array v2, v1, [Lcom/mapps/android/view/AdView$SSPAdmState;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
