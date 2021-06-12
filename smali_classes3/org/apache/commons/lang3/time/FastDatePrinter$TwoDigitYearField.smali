.class Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoDigitYearField"
.end annotation


# static fields
.field static final a:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 938
    new-instance v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;->a:Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final a(Ljava/lang/StringBuffer;I)V
    .locals 0

    .line 968
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    const/4 v0, 0x1

    .line 960
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    rem-int/lit8 p2, p2, 0x64

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitYearField;->a(Ljava/lang/StringBuffer;I)V

    return-void
.end method
