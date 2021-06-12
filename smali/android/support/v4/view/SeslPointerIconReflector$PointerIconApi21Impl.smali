.class Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/SeslPointerIconReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointerIconApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/SeslPointerIconReflector$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_TYPE_STYLUS_DEFAULT()I
    .locals 2

    .line 29
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "HOVERING_SPENICON_DEFAULT"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getField_SEM_TYPE_STYLUS_MORE()I
    .locals 2

    .line 101
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "HOVERING_SPENICON_MORE"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 103
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x4e2a

    return v0
.end method

.method public getField_SEM_TYPE_STYLUS_PEN_SELECT()I
    .locals 2

    .line 89
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "HOVERING_PENSELECT_POINTER_01"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 91
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x15

    return v0
.end method

.method public getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I
    .locals 2

    .line 53
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "HOVERING_SCROLLICON_POINTER_05"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 55
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0
.end method

.method public getField_SEM_TYPE_STYLUS_SCROLL_LEFT()I
    .locals 2

    .line 65
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "HOVERING_SCROLLICON_POINTER_07"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 67
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x11

    return v0
.end method

.method public getField_SEM_TYPE_STYLUS_SCROLL_RIGHT()I
    .locals 2

    .line 77
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "HOVERING_SCROLLICON_POINTER_03"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 81
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xd

    return v0
.end method

.method public getField_SEM_TYPE_STYLUS_SCROLL_UP()I
    .locals 2

    .line 41
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "HOVERING_SCROLLICON_POINTER_01"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 45
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xb

    return v0
.end method
