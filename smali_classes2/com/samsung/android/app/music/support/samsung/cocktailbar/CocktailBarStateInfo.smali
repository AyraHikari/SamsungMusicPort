.class public Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;
.super Ljava/lang/Object;
.source "CocktailBarStateInfo.java"


# static fields
.field public static final POSITION_BOTTOM:I = 0x4

.field public static final POSITION_LEFT:I = 0x1

.field public static final POSITION_RIGHT:I = 0x2

.field public static final POSITION_TOP:I = 0x3

.field public static final STATE_INVISIBLE:I = 0x2

.field public static final STATE_VISIBLE:I = 0x1

.field public static final WINDOW_TYPE_FULLSCREEN:I = 0x2

.field public static final WINDOW_TYPE_MINIMIZE:I = 0x1


# instance fields
.field public background:I

.field public position:I

.field public visibility:I

.field public windowType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->background:I

    iput v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;->background:I

    .line 3
    iget v0, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->position:I

    iput v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;->position:I

    .line 4
    iget v0, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->visibility:I

    iput v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 5
    iget p1, p1, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    iput p1, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;->windowType:I

    return-void
.end method
