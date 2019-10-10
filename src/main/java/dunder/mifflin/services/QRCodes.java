package dunder.mifflin.services;

import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.qrcode.QRCodeWriter;

import javax.ejb.Stateless;
import java.awt.image.BufferedImage;
import java.util.EnumMap;
import java.util.Map;

import static com.google.zxing.BarcodeFormat.QR_CODE;
import static com.google.zxing.EncodeHintType.*;
import static com.google.zxing.common.CharacterSetECI.UTF8;
import static com.google.zxing.qrcode.decoder.ErrorCorrectionLevel.H;

@Stateless
public class QRCodes {

    private final QRCodeWriter writer = new QRCodeWriter();

    private final Map<EncodeHintType, Object> hints = new EnumMap<>(Map.of(
            ERROR_CORRECTION, H,
            CHARACTER_SET, UTF8,
            MARGIN, 1
    ));

    public BufferedImage bufferedImage(String contents, int size) throws WriterException {
        return MatrixToImageWriter.toBufferedImage(writer.encode(
                contents,
                QR_CODE,
                size,
                size,
                hints
        ));
    }
}
