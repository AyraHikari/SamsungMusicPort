.class public final Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;
.super Ljava/lang/Object;
.source "HoverPopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gravity"
.end annotation


# static fields
.field public static final BOTTOM:I

.field public static final BOTTOM_UNDER:I

.field public static final CENTER:I

.field public static final CENTER_HORIZONTAL:I

.field public static final CENTER_HORIZONTAL_ON_POINT:I

.field public static final CENTER_HORIZONTAL_ON_WINDOW:I

.field public static final CENTER_VERTICAL:I

.field public static final HORIZONTAL_GRAVITY_MASK:I

.field public static final LEFT:I

.field public static final LEFT_CENTER_AXIS:I

.field public static final LEFT_OUTSIDE:I

.field public static final NO_GRAVITY:I

.field public static final RIGHT:I

.field public static final RIGHT_CENTER_AXIS:I

.field public static final RIGHT_OUTSIDE:I

.field public static final TOP:I

.field public static final TOP_ABOVE:I

.field public static final VERTICAL_GRAVITY_MASK:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x50

    .line 2
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->BOTTOM:I

    const/16 v0, 0x5050

    .line 3
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->BOTTOM_UNDER:I

    const/16 v0, 0x11

    .line 4
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER:I

    const/4 v0, 0x1

    .line 5
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_HORIZONTAL:I

    const/16 v0, 0x201

    .line 6
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_HORIZONTAL_ON_POINT:I

    const/16 v0, 0x101

    .line 7
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_HORIZONTAL_ON_WINDOW:I

    const/16 v0, 0x10

    .line 8
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_VERTICAL:I

    const/16 v0, 0xf0f

    .line 9
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->HORIZONTAL_GRAVITY_MASK:I

    const/4 v0, 0x3

    .line 10
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->LEFT:I

    const/16 v0, 0x103

    .line 11
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->LEFT_CENTER_AXIS:I

    const/16 v0, 0x303

    .line 12
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->LEFT_OUTSIDE:I

    const/4 v0, 0x0

    .line 13
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->NO_GRAVITY:I

    const/4 v0, 0x5

    .line 14
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->RIGHT:I

    const/16 v0, 0x105

    .line 15
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->RIGHT_CENTER_AXIS:I

    const/16 v0, 0x505

    .line 16
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->RIGHT_OUTSIDE:I

    const/16 v0, 0x30

    .line 17
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->TOP:I

    const/16 v0, 0x3030

    .line 18
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->TOP_ABOVE:I

    const v0, 0xf0f0

    .line 19
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->VERTICAL_GRAVITY_MASK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
