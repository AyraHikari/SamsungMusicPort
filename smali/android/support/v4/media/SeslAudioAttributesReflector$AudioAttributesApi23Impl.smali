.class Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi23Impl;
.super Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi21Impl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/SeslAudioAttributesReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioAttributesApi23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi21Impl;-><init>(Landroid/support/v4/media/SeslAudioAttributesReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/SeslAudioAttributesReflector$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/support/v4/media/SeslAudioAttributesReflector$AudioAttributesApi23Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_FLAG_BYPASS_INTERRUPTION_POLICY()I
    .locals 2

    .line 33
    invoke-static {}, Landroid/support/v4/media/SeslAudioAttributesReflector;->access$100()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "FLAG_BYPASS_INTERRUPTION_POLICY"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 37
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
