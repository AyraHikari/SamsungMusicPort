.class Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iget v0, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iput v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    .line 104
    iget v0, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iput v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    .line 105
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$102(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 95
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 0

    .line 95
    iget p0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p0
.end method

.method static synthetic access$202(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0

    .line 95
    iput p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p1
.end method

.method static synthetic access$300(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 0

    .line 95
    iget p0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p0
.end method

.method static synthetic access$302(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0

    .line 95
    iput p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 110
    instance-of v0, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 113
    :cond_0
    check-cast p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 114
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v2, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v2, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    .line 116
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 122
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 123
    iget v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 124
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
