.class public Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/SmpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Builder;,
        Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/samsung/android/sdk/smp/SmpConfiguration$1;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;)Ljava/util/Map;
    .locals 0

    .line 463
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
