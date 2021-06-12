.class Landroid/support/v4/view/SeslViewReflector$ViewApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/SeslViewReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/SeslViewReflector$1;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/view/SeslViewReflector$ViewApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccessibilityFocus(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 106
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clearAccessibilityFocus"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getField_mPaddingLeft(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPaddingLeft"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 72
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getField_mPaddingRight(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPaddingRight"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 85
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getWindowDisplayFrame(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 239
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowVisibleDisplayFrame"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 242
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public isHighContrastTextEnabled(Landroid/view/View;)Z
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isHighContrastTextEnabled"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 212
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 213
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public isHoveringUIEnabled(Landroid/view/View;)Z
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 155
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isHoveringUIEnabled"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 158
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 159
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 160
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public isInScrollingContainer(Landroid/view/View;)Z
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isInScrollingContainer"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 97
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 134
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isVisibleToUser"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 137
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 138
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 139
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return v5
.end method

.method public notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "notifyViewAccessibilityStateChangedIfNeeded"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public requestAccessibilityFocus(Landroid/view/View;)Z
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 114
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "requestAccessibilityFocus"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 117
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public resetPaddingToInitialValues(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 230
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "resetPaddingToInitialValues"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 233
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public resolvePadding(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "resolvePadding"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 224
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getHoverPopupWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 191
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public semGetHoverPopupType(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 168
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mHoverPopupType"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 171
    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 172
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 173
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public semGetRoundedCorners(Landroid/view/View;)I
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 257
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "semGetRoundedCorners"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 260
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 261
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public semSetDirectPenInputEnabled(Landroid/view/View;Z)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 147
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setWritingBuddyEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public semSetHoverPopupType(Landroid/view/View;I)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 181
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setHoverPopupType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public semSetPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 200
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "semSetPointerIcon"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/view/PointerIcon;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public semSetRoundedCorners(Landroid/view/View;I)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 248
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "semSetRoundedCorners"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 251
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setField_mPaddingLeft(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPaddingLeft"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/support/v4/SeslBaseReflector;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setField_mPaddingRight(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-static {}, Landroid/support/v4/view/SeslViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPaddingRight"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/support/v4/SeslBaseReflector;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
