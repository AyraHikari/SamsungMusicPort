.class public final enum Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

.field public static final enum Marketing:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

.field public static final enum Notice:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 470
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    const-string v1, "Notice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Notice:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    .line 471
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    const-string v1, "Marketing"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Marketing:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    const/4 v0, 0x2

    .line 469
    new-array v0, v0, [Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    sget-object v1, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Notice:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Marketing:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->$VALUES:[Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 469
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;
    .locals 1

    .line 469
    const-class v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;
    .locals 1

    .line 469
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->$VALUES:[Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    return-object v0
.end method
