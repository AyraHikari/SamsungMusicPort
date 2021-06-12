.class public Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;
.super Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final c:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    .line 25
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->a:[I

    .line 29
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->b:[I

    return-void

    :array_0
    .array-data 4
        0x7f1302ea
        0x7f1302eb
        0x7f1302ec
        0x7f1302ed
        0x7f1302ee
        0x7f1302ef
        0x7f1302f0
    .end array-data

    :array_1
    .array-data 4
        0x7f0b04d7
        0x7f0b04d8
        0x7f0b04d9
        0x7f0b04da
        0x7f0b04db
        0x7f0b04dc
        0x7f0b04dd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;-><init>()V

    const/4 v0, 0x7

    .line 35
    new-array v0, v0, [Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->c:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;)[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->c:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0400c9

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x7

    .line 45
    new-array v1, v0, [Landroid/view/View;

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->b()[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 49
    sget-object v4, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->a:[I

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v1, v3

    .line 50
    aget-object v4, v1, v3

    const v5, 0x7f1302f2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v5, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->b:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 52
    iget-object v4, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->c:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v5, v1, v3

    const v6, 0x7f1302f1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aput-object v5, v4, v3

    .line 53
    iget-object v4, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->c:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v4, v4, v3

    aget v5, v2, v3

    const/16 v6, 0xa

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setProgress(I)V

    .line 54
    iget-object v4, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->c:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v4, v4, v3

    invoke-virtual {v4, v6}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setBaseValue(I)V

    .line 55
    iget-object v4, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->c:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    aget-object v4, v4, v3

    new-instance v5, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->b(Landroid/view/View;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()[I
    .locals 6

    const/4 v0, 0x7

    .line 61
    new-array v1, v0, [I

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "music_service_pref"

    const/4 v4, 0x4

    .line 63
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "user_eq"

    const-string v4, "0|0|0|0|0|0|0|"

    .line 66
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 70
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v4

    goto :goto_1

    .line 74
    :cond_0
    aput v2, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public c()V
    .locals 5

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->c:[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/16 v4, 0xa

    .line 84
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->setProgress(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
