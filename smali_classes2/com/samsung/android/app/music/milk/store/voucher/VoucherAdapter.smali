.class public final Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;,
        Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;,
        Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$InputViewHolder;,
        Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->a:Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-void
.end method

.method private final a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "voucherTitle"

    .line 271
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 232
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 233
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "MMMM/dd/yyyy hh:mm aa"

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 232
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 236
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 239
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 240
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dateFormat.format(dateOri)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 245
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string p1, " "

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 246
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v1, "-"

    const-string v2, "."

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;Landroid/database/Cursor;)V
    .locals 0

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;->a()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;Landroid/database/Cursor;)V
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 108
    iget-object v2, p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 110
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b049c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 126
    iget-object v2, p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 129
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x7f0b049e

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v5, "02"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :pswitch_1
    const-string v5, "01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : ~ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 142
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->context:Landroid/content/Context;

    const v5, 0x7f0b049d

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    :goto_2
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_5

    .line 153
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;->a()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "01"

    .line 155
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->e(Landroid/database/Cursor;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz p1, :cond_7

    .line 162
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;->b()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "01"

    .line 163
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x0

    :cond_6
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const-string v0, "01"

    .line 169
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->d(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p1, :cond_8

    .line 170
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x601
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "voucherCode"

    .line 272
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final b(Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;Landroid/database/Cursor;)V
    .locals 0

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;->a()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final c(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "expiryDateLocal"

    .line 273
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final d(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "statusCode"

    .line 274
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final e(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "read"

    .line 275
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object v0
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->getItemViewType(I)I

    move-result v0

    .line 80
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->b(Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 89
    :pswitch_1
    check-cast p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 92
    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->a(Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;Landroid/database/Cursor;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    if-nez p3, :cond_6

    .line 67
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0401a2

    .line 68
    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :pswitch_0
    if-nez p3, :cond_0

    .line 42
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f04015d

    .line 43
    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 46
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$InputViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$InputViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    goto :goto_1

    :pswitch_1
    if-nez p3, :cond_2

    .line 50
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f04019f

    .line 51
    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 54
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    goto :goto_1

    :pswitch_2
    if-nez p3, :cond_4

    .line 58
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f040055

    .line 59
    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 62
    :cond_4
    new-instance p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$SubHeaderViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    goto :goto_1

    .line 70
    :cond_6
    :goto_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p3, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/milk/store/voucher/VoucherAdapter$VoucherViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
