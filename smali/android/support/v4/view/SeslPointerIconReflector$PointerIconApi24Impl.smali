.class Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi24Impl;
.super Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/SeslPointerIconReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointerIconApi24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;-><init>(Landroid/support/v4/view/SeslPointerIconReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/SeslPointerIconReflector$1;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi24Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_TYPE_STYLUS_DEFAULT()I
    .locals 2

    .line 115
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_DEFAULT"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 119
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

    .line 187
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_MORE"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 189
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 191
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

    .line 175
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_PEN_SELECT"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 177
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 179
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

    .line 139
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_SCROLL_DOWN"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 141
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 143
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

    .line 151
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_SCROLL_LEFT"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 153
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 155
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

    .line 163
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_SCROLL_RIGHT"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 165
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 167
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

    .line 127
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_SCROLL_UP"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 129
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xb

    return v0
.end method
