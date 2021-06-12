.class Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/SeslNumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoDigitFormatter"
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field mFmt:Ljava/util/Formatter;

.field mZeroDigit:C


# direct methods
.method constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 88
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    .line 91
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    return-void
.end method

.method private createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;
    .locals 2

    .line 123
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static getZeroDigit(Ljava/util/Locale;)C
    .locals 0

    .line 115
    invoke-static {p0}, Landroid/support/v4/icu/SeslLocaleDataReflector;->get(Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x30

    return p0

    .line 119
    :cond_0
    invoke-static {p0}, Landroid/support/v4/icu/SeslLocaleDataReflector;->getField_zeroDigit(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method private init(Ljava/util/Locale;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->createFormatter(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    .line 97
    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result p1

    iput-char p1, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mZeroDigit:C

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3

    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 103
    iget-char v1, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mZeroDigit:C

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result v2

    if-eq v1, v2, :cond_0

    .line 104
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->init(Ljava/util/Locale;)V

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 107
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 108
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    const-string v0, "%02d"

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mArgs:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 109
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPicker$TwoDigitFormatter;->mFmt:Ljava/util/Formatter;

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
