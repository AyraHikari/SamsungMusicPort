.class public final Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x50

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->BOTTOM:I

    .line 34
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x5050

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->BOTTOM_UNDER:I

    .line 38
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x11

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER:I

    .line 42
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_HORIZONTAL:I

    .line 46
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x201

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_HORIZONTAL_ON_POINT:I

    .line 50
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x101

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_HORIZONTAL_ON_WINDOW:I

    .line 54
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x10

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->CENTER_VERTICAL:I

    .line 58
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0xf0f

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->HORIZONTAL_GRAVITY_MASK:I

    .line 62
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->LEFT:I

    .line 65
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x103

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->LEFT_CENTER_AXIS:I

    .line 69
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x303

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->LEFT_OUTSIDE:I

    .line 73
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->NO_GRAVITY:I

    .line 77
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->RIGHT:I

    .line 80
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x105

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->RIGHT_CENTER_AXIS:I

    .line 84
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x505

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->RIGHT_OUTSIDE:I

    .line 88
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x30

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->TOP:I

    .line 91
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x3030

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->TOP_ABOVE:I

    .line 95
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const v0, 0xf0f0

    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;->VERTICAL_GRAVITY_MASK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
