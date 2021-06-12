.class Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/SeslConfigurationReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigurationApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/res/SeslConfigurationReflector$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_DESKTOP_MODE_ENABLED(Landroid/content/res/Configuration;)I
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public getField_semDesktopModeEnabled(Landroid/content/res/Configuration;)I
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, -0x1

    return p1
.end method
