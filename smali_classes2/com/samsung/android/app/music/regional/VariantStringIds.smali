.class public Lcom/samsung/android/app/music/regional/VariantStringIds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p_:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b0441

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0440

    :goto_0
    sput v0, Lcom/samsung/android/app/music/regional/VariantStringIds;->a:I

    .line 15
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p_:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b0424

    goto :goto_1

    :cond_1
    const v0, 0x7f0b0423

    :goto_1
    sput v0, Lcom/samsung/android/app/music/regional/VariantStringIds;->b:I

    .line 19
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p_:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b02b3

    goto :goto_2

    :cond_2
    const v0, 0x7f0b02b2

    :goto_2
    sput v0, Lcom/samsung/android/app/music/regional/VariantStringIds;->c:I

    return-void
.end method
