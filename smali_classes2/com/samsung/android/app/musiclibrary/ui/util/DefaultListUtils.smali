.class public Lcom/samsung/android/app/musiclibrary/ui/util/DefaultListUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 4

    packed-switch p0, :pswitch_data_0

    .line 39
    :pswitch_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tracks:I

    goto :goto_0

    .line 36
    :pswitch_1
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->nearby_devices:I

    goto :goto_0

    .line 33
    :pswitch_2
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->years:I

    goto :goto_0

    .line 30
    :pswitch_3
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->composers:I

    goto :goto_0

    .line 27
    :pswitch_4
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->folders:I

    goto :goto_0

    .line 24
    :pswitch_5
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->genres:I

    goto :goto_0

    .line 21
    :pswitch_6
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->playlists:I

    goto :goto_0

    .line 18
    :pswitch_7
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->artists:I

    goto :goto_0

    .line 15
    :pswitch_8
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->albums:I

    :goto_0
    const-string v1, "ListUtils"

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getListTypeTextResId() - listType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " listType text resId: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
