.class public Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;,
        Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "yyyy-MM-dd HH:mm:ss"

    .line 95
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMMM/dd/yyyy"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 99
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 101
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 102
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    const-string p0, " "

    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 109
    aget-object p0, p0, p1

    const-string p1, "-"

    const-string v0, "."

    .line 110
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;
    .locals 2

    if-nez p3, :cond_0

    .line 37
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0401a1

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 40
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;I)V
    .locals 3

    .line 45
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 46
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v0, "history_title"

    .line 47
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "start_date_local"

    .line 54
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "end_date_local"

    .line 56
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-static {v1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 57
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;->textView2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "~"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;I)V

    return-void
.end method

.method protected synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryAdapter$UsageHistoryViewHolder;

    move-result-object p1

    return-object p1
.end method
