.class Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;
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
    name = "TwoDigitNumberField"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final a(Ljava/lang/StringBuffer;I)V
    .locals 1

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 927
    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->access$000(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 929
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1

    .line 918
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;->a:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter$TwoDigitNumberField;->a(Ljava/lang/StringBuffer;I)V

    return-void
.end method
