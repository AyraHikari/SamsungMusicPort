.class Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi24Impl;
.super Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi21Impl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemApi24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi21Impl;-><init>(Landroid/support/v4/provider/SeslSettingsReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/provider/SeslSettingsReflector$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi24Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_PEN_HOVERING()Ljava/lang/String;
    .locals 2

    .line 41
    invoke-static {}, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "SEM_PEN_HOVERING"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "pen_hovering"

    return-object v0
.end method
